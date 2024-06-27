from flask import jsonify

def success(values, message):
    res = {
        'data': values,
        'message': message
    }
    return jsonify(res), 200

def error(values, message):
    res = {
        'data': values,
        'message': message
    }
    return jsonify(res), 500
