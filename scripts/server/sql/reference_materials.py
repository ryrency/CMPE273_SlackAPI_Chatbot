from course import *
from course_section import *

def get_reference_material(text):
    course = get_course(text)
    response = {}
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    (course_section, text) = get_course_section(text, course)
    if not course_section:
        return {"error":"Sorry no matching section found for " + course['name']}

    course_section_name = course['name'] + "-" + str(course_section['section_no'])

    course_section_details = get_course_section_details(course_section['id'])

    if not course_section_details:
        return {"error":"Sorry no reference material found for " + course_section_name}
    response["references"] = course_section_details['reference_material']
    response["course_name"] = course['name']
    return response