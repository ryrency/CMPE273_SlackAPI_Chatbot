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
                regex = course_number + ".*" + str(course_section["section_no"])
                if bool(re.search(regex, text)):
                    print "matching section found"
                    return course_section

            if len(course_sections) > 0:
                print "no matches found, using first section"
                return course_sections[0]
    finally:
        connection.close()

    return None