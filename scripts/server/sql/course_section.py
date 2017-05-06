from utils import *
from course import *

import re

def get_course_section(text, course):
    connection = get_mysql_connection()

    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM course_sections where course_id = " + str(course['id'])
            cursor.execute(sql)
            course_sections = cursor.fetchall()

            course_name = course['name']
            # extract digits from course name
            course_number = extract_digits(course_name)
            for course_section in course_sections:
                regex = course_number + "([0_.\- ]|section)*" + str(course_section["section_no"]) + "($| )"
                p = re.compile(regex)
                m = p.search(text)
                if m:
                    return (course_section, text.replace(m.group(0), ""))
    finally:
        connection.close()

    return (None, None)