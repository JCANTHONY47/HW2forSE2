# hw2

The objective for this homework is to add interactive stateful Flutter widgets for each of the questions so that they match the screenshots provided.

All you modifications/changes will go under:
lib/questions/

you will change question#.dart files.

the starting point for the whole application is: 
lib/main.dart

## Question 1

You will need to wire up the **onPressed** function in order to make the text turn <span style="color:green;">green</span> when pressed.

Hint: you will need to make a variable to store if the button was press. Using this variable you can used a if conditional or ternary operator to know which color to assign to the Text.

ex.
```dart 
...
// this is a ternary operator: 
//<boolean expression> ? <result when true> : <result when false>
color: _wasPressed ? Colors.green : Colors.black

...

```
<br/>

NOTE: Don't forget to call **SetState** when you handle the button press otherwise flutter won't know to rebuild the UI.

<img src="https://github.com/bry02g/hw2_stateful_widgets/blob/master/screenshots/question1.gif" width="40%">

## Question 2

You will need to wire up the IconButton to toggle between filled/unfilled heart.

Hint: will need to use two icons Icons.favorite_border & Icons.favorite. Simillar to question 1, this time you will need to swap the icons depending on the state your variable holds.


<img src="https://github.com/bry02g/hw2_stateful_widgets/blob/master/screenshots/question2.gif" width="40%">

## Question 3

For this question you will be working with TextFields and [TextEditingController](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html). The TextEditingController allows you to access/modify the content of the TextField.

Two TextEditingController variables have been provided and assigned to their respected Textfields.

```dart
TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();
```

```dart
// Assigning TextEditingController to the TextField
TextField(
    ...
    controller: newPasswordTextEditingController,
    ...
)
```

You will need to wire up the Done button so that when it's pressed it check 
if the two text fields have the same password if they don't display 
"Passwords Don't Match"

<img src="https://github.com/bry02g/hw2_stateful_widgets/blob/master/screenshots/question3.gif" width="40%">


## Question 4
NOTE: When you first run Question 4 you will see that both the checkbox and button are disable. This occurs when onChanged/onPressed are set to **null**

For this question you will need to handle the state of the checkbox when checked the "Sign Up" button should become enabled. 
(The Sign up button doesn't need to do anything when pressed.)

Hint: The onChanged callback has a parameter which represent if the checkbox was checked/unchecked (true/false)
```dart
onChanged : (newValue) {}
```

You will need to used the button behavior of beeing disables when given a null callback

```dart
onPressed: agreed ? () {} : null
```

<img src="https://github.com/bry02g/hw2_stateful_widgets/blob/master/screenshots/question4.gif" width="40%">

## Question 5 

Remember the Baby Yoda question from the previous homework.
Well today the requirements have changed instead of showing a single Baby Yoda image you now will need to cycle between three images when the the icon button is pressed.

As you might recall the last homework was about **stateless** widgets so for this question you will need to convert that widget into a **stateful** widget before adding in the image cycling feature that require state.

Note: Sometimes it take a few seconds for the images to load from the internet that's ok.

urls:

"https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp"

 <br/>

"https://i.insider.com/5de2cd3fe94e8635a17ca8ae?width=1100&format=jpeg&auto=webp"

<br/>

"https://media4.s-nbcnews.com/j/newscms/2019_47/3112746/191121-baby-yoda-cs-959a_ed40d38efa3cde7ab92df2d5492a81a5.fit-1120w.jpg"

<br/>
<img src="https://github.com/bry02g/hw2_stateful_widgets/blob/master/screenshots/question5.gif" width="40%">










