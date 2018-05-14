from flask import Flask,request
import json
import sys
sys.path.append('./scripts/classifier')
sys.path.append('./scripts/server/sql')
from classifier import Classifier
import utils, course, course_section, program_outcomes, learning_objectives, lab_schedule, \
    assignment_schedule, greeting, project_schedule, mid_term_schedule, final_exam_schedule, \
    course_grading, course_name, class_location, course_prereq, course_timings, course_website, \
    instructor_contact, instructor_email, instructor_name, instructor_office_hours, instructor_office_location, \
    instructor_phone, university_policy , reference_materials

txt_clf = Classifier()
app = Flask(__name__)
response = {}

# http://localhost:5000/classify?text=who is doing it
@app.route("/classify")
def classify():
    text = request.args.get('text')
    text = text.lower()
    text = utils.map_words_to_digits_in_text(text)
    return _get_answer(text)

def _get_answer(text):
    text = text.lower()
    text = utils.map_words_to_digits_in_text(text)
    text = utils.singularize_words(text)
    label = txt_clf.classify(text)
    print label

    if label == 'hello':
        return _prepare_response(1, greeting.get_greeting(text))
    if label == 'bye':
        return _prepare_response(2, greeting.get_goodbye(text))
    if label == 'instructor_contact':
        return _prepare_response(3, instructor_contact.get_contact(text))
    if label == 'instructor_email':
        return _prepare_response(4, instructor_email.get_email(text))
    if label == 'instructor_name':
        return _prepare_response(5, instructor_name.get_name(text))
    if label == 'instructor_office_hours':
        return _prepare_response(6, instructor_office_hours.get_hours(text))
    if label == 'instructor_office_location':
        return _prepare_response(7, instructor_office_location.get_location(text))
    if label == 'instructor_phone':
        return _prepare_response(8, instructor_phone.get_phone(text))
    elif label == 'course_name':
        return _prepare_response(9, course_name.get_description(text))
    elif label == 'course_prereq':
        return _prepare_response(10, course_prereq.get_prereq(text))
    elif label == 'course_timings':
        return _prepare_response(11, course_timings.get_timings(text))
    elif label == 'course_website':
        return _prepare_response(12, course_website.get_url(text))
    elif label == 'class_location':
        return _prepare_response(13, class_location.get_location(text))
    elif label == 'course_learning_objectives':
        return _prepare_response(-1, learning_objectives.get_learning_objectives(text))
    elif label == 'program_outcome':
        return _prepare_response(-1, program_outcomes.get_program_outcomes(text))
    elif label == 'lab_schedule':
        return _prepare_response(16, lab_schedule.get_lab_schedule(text))
    elif label == 'assignment_schedule':
        return _prepare_response(17, assignment_schedule.get_assignment_schedule(text))
    elif label == 'project_schedule':
        return _prepare_response(18, project_schedule.get_project_schedule(text))
    elif label == 'mid_term_schedule':
        return _prepare_response(19, mid_term_schedule.get_mid_term_schedule(text))
    elif label == 'final_exam_schedule':
        return _prepare_response(20, final_exam_schedule.get_final_exam_schedule(text))
    elif label == 'course_grading':
        return _prepare_response(21, course_grading.get_course_grading_details(text))
    elif label == 'university_policy':
        return _prepare_response(22, university_policy.get_university_policy(text))
    elif label == 'reference_materials':
        return _prepare_response(23, reference_materials.get_reference_material(text))
    else:
        return _prepare_response(-1, {"error": "Sorry I don't understand your question."})

def _prepare_response(categoryType, category_response):
    category_response['categoryType'] = categoryType
    return json.dumps(category_response)

if __name__ == "__main__":
    app.run(debug=True,host='localhost')
