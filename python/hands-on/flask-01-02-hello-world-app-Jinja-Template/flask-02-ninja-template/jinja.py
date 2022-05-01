from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def head():
    return render_template('index.html', number1 = 7000, number2 = 9000)

    

@app.route('/mult')
def number():
    var1, var2, var3 = 4, 5, 6
    multiply = (var1 * var2 * var3)
    return render_template('body.html', num1 = var1, num2 = var2, num3 = var3, multiplication = multiply)

@app.route('/newmult')
def calc():
    var1, var2, var3 = 7, 8, 9
    multiply = (var1 * var2 * var3)
    def number():
        return (" {0} * {1} * {2} = {3}".format(var1, var2, var3, multiply))
    return render_template('body2.html', num1 = var1, num2 = var2, num3 = var3, multiplication = multiply, resume = number())

if __name__ == '__main__':
    app.run(debug=True, port=2000) # if ===> port is not dedicated. It is 5000 as default 