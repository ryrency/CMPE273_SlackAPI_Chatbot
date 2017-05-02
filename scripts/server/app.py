from flask import Flask,request
import sys
sys.path.append('./scripts/classifier')
from classifier import Classifier

txt_clf = Classifier()
app = Flask(__name__)

# http://localhost:5000/classify?text=who is doing it
@app.route("/classify")
def classify():
    text = request.args.get('text')
    return txt_clf.classify(text)



if __name__ == "__main__":
    app.run(debug=True,host='localhost')
