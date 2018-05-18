from course import get_course
from course import _get_location_coordinates
from course_section import *

def get_location(text):
    response = {}
    course = get_course(text)
    if not course:
        return {"error":"Sorry no matching courses found. valid courses are: " + str(get_all_course_names())}

    (course_section, text) = get_course_section(text, course)
    if not course_section:
        return {"error":"Sorry no matching section found for " + course['name']}

    course_section_name = course['name'] + "-" + str(course_section['section_no'])

    course_section_details = get_course_section_details(course_section['id'])

    if not course_section_details:
        return {"error":"Sorry no class location found for " + course_section_name}
    else:
        response["class location"] = course_section_details['class_location'] 

        building_coordinates = _get_location_coordinates(course_section_details['class_location'])
        if not building_coordinates:
            return {"error":"Sorry no class location found for " + course_section_name}
        else:
            response["latitude"] = str(building_coordinates['latitude'])
            response["longitude"] = str(building_coordinates['longitude'])
    return response
