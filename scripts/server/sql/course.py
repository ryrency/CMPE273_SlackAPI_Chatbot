from utils import *
import json

last_course_in_context = None

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
    global last_course_in_context
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
                    last_course_in_context = course
                    return course

            # if not matching course found return last course from context
            if last_course_in_context:
                return last_course_in_context

    finally:
        connection.close()

    return None

def _get_location_coordinates(location):
    building = []
    for char in location:
        if not char.isdigit():
            building.append(char)
    sjsu_building = ''.join(building)

    connection = get_mysql_connection()
    try:
            with connection.cursor() as cursor:
                sql = "SELECT * FROM address where building_code =\"" + str(sjsu_building)+"\""
                cursor.execute(sql)
                building_coordinates = cursor.fetchall()
            if len(building_coordinates) > 0:                
                return building_coordinates[0]
    finally:
        connection.close()