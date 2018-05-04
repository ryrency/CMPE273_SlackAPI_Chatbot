from course import *
from course_section import *

def get_timings(text):
    course = get_course(text)
    response = {}
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    (course_section, text) = get_course_section(text, course)
    if not course_section:
        return {"error":"Sorry no matching section found for " + course['name']}

    course_section_name = course['name'] + "-" + str(course_section['section_no'])

    course_section_details = get_course_section_details(course_section['id'])

    d_o_w = course_section_details['day_of_week']
    c_s_t = course_section_details['class_start_time']
    c_e_t = course_section_details['class_end_time']

    if not course_section_details or not d_o_w or not c_s_t or not c_e_t:
        return {"error":"Sorry I don't know about " + course_section_name + " timings"}
    response["day"] = d_o_w
    response["class_start_time"] = c_s_t
    response["class_end_time"] = c_e_t
    return response
