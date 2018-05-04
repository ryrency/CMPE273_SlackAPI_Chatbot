from utils import *
from course import *
from course_section import *
import json

def get_location(text):
    response = {}
    course = get_course(text)
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    (course_section, text) = get_course_section(text, course)
    if not course_section:
        return {"error":"Sorry no matching section found for " + course['name']}

    course_section_name = course['name'] + "-" + str(course_section['section_no'])

    instructor = _get_instructor(course_section['id'])
    if not instructor:
        return {"error":"Sorry no instructor details found for " + course_section_name}
    else:
        response["office_location"] = instructor['office_location']
        response["instructor_name"] = instructor['name']
        return response

def _get_instructor(course_section_id):
    course_section_details = get_course_section_details(course_section_id)
    #print(course_section_details)
    if not course_section_details:
        return None

    #get instructor now
    connection = get_mysql_connection()

    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM instructors where id = " + str(course_section_details['instr_id'])
            cursor.execute(sql)
            instructors = cursor.fetchall()

            if len(instructors) > 0:
                return instructors[0]
    finally:
        connection.close()