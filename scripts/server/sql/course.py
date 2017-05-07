from utils import *
import json

_last_course_in_context = None

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
    global _last_course_in_context
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
                    _last_course_in_context = course
                    return course

            # if not matching course found return last course from context
            if _last_course_in_context:
                return _last_course_in_context

    finally:
        connection.close()

    return None