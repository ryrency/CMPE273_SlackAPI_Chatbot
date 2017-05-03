from utils import *
import json

def get_all_course_names():
    connection = get_mysql_connection()

    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM courses"
            cursor.execute(sql)
            courses = cursor.fetchall()

            course_names = []
            for course in courses:
                course_names.append(course['name'])

            return course_names

    finally:
        connection.close()

    return []

def get_course(text):
    connection = get_mysql_connection()

    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM courses"
            cursor.execute(sql)
            courses = cursor.fetchall()

            for course in courses:
                course_name = course['name']
                # extract digits from course name
                course_number = extract_digits(course_name)
                if course_number in text:
                    return course
    finally:
        connection.close()

    return None

def get_course_details(text):
    course = get_course(text)
    if not course:
        return "Sorry no matching courses found. valid courses are: " + str(get_all_course_names())

    return _get_course_detail(course, text)

def _get_course_detail(course, text):
    if 'title' in text or 'descri' in text:
        return course['description']
    elif 'prereq' in text or 'pre-req' in text:
        return course['pre_requisites']
    else:
        return "Here are the course details: " + json.dumps(course)