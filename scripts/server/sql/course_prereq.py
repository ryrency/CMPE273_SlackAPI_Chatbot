from course import *
from course_section import *

def get_prereq(text):
    response = {}
    course = get_course(text)
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    # just calling the get_course_function so that we can remember the course section from text
    (course_section, text) = get_course_section(text, course)
    response["course_name"] = course['name']
    response["pre_requirement"] = course['pre_requisites']
    return response