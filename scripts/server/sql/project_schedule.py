from utils import *
from course import *
from course_section import *
import json

def get_project_schedule(text):
    response = {}
    course = get_course(text)
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    (course_section, text) = get_course_section(text, course)
    if not course_section:
        return {"error":"Sorry no matching section found for " + course['name']}
    
    course_section_name = course['name'] + "-" + str(course_section['section_no'])
    project_schedules = _get_project_schedules(course_section['id'])

    if not project_schedules or len(project_schedules) <= 0:
        return {"error":"Sorry no project schedules found for " + course_section_name}
    else:
        response["due_date"] = project_schedules[0]['due_date']
        return response

def _get_project_schedules(course_section_id):
    #get instructor now
    connection = get_mysql_connection()

    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM course_schedules WHERE course_section_id = " + str(course_section_id) + " AND activity_type = 2"
            cursor.execute(sql)
            project_schedules = cursor.fetchall()

            return project_schedules
    finally:
        connection.close()

    return None