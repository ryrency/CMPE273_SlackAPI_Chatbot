from course import *

def get_prereq(text):
    course = get_course(text)
    if not course:
        return "Sorry no matching courses found. valid courses are: " + str(get_all_course_names())

    return course['name'] + " requires " + course['pre_requisites']