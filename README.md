# Ruby-Capstone-Project
A JavaScript linter built with Ruby

## Video Description
(https://www.loom.com/share/77bbaf93c61f4ed49652e6c80315cb82)

## Built With

- Ruby,
- Vs.code,
- Git and Github
- Rspec

## Getting Started

- clone this repository `https://github.com/evansinho/Ruby-Capstone-Project`
- cd to the folder `Ruby-Capstone-Project`

## testing
- Use this command `Rspec` to run test

## Instructions

- To check for errors in your javaScript file run the code `ruby bin/main.rb + javascript file you want check`

## Screenshot of code output

![snapshot](/snapshot.PNG)

## ERRORS that can currently be detected include

### SPACING ERRORS
- if spaces are found at beginning of lines
- if extra spaces are found around variables e.g
  - `*Good practice* let boy = doe or const number = 9`
  - `*Bad practice* let| | boy = doe or var number| | = 9`

### CLASS COUNT ERROR
- if more than one class is defined in a module.

### VARIABLE NAMING ERRORS
- if capital letters or numbers are used to start a variable name, e.g
  - `*Bad practice* let 4boy = doe or const Numbercaps = 9`
  - `*GOOD practice* let boy = doe or var numberCaps = 9`

### CLASS NAME ERRORS
- if class names begin with small letters and/or
- if class names are snake-cased or both e.g
  - `*Good practice* class GoodClass {} or class Good_Class {}`
  - `*Bad practice* class badclass {} or class Bad-class {}`
- Or if underscores and hyphen are mixed `*Bad practice* class Bad_class-Name {}`


## Authors

👤 **Evanson Igiri**

- Github: [@githubhandle](https://github.com/evansinho)
- Twitter: [@twitterhandle](https://twitter.com/iamsinho1304)
- Linkedin: [linkedin](https://linkedin.com/in/evanson-igiri)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/evansinho/Ruby-Capstone-Project/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Odin Project
