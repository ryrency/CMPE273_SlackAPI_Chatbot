from course import *

def get_description(text):
    course = get_course(text)
    if not course:
        return "Sorry no matching courses found. valid courses are: " + str(get_all_course_names())

    return course['name'] + " is about " + course['description']