const Username = document.getElementById("Username");
const age = document.getElementById("age");
const email = document.getElementById("email");
const password = document.getElementById("password");
const form = document.getElementById("form");
// const errorElement = decument.getElementById("error");

form.addEventListener("submit", (e) => {
  e.defaultPrevented();

  // validateInput();
});
const setError = (element, message) => {
  const inputControl = element.ParentElement;
  const errorDisplay = inputControl.querySelector(".error");

  errorDisplay.innerText = message;
  inputControl.classList.add("error");
  inputControl.classList.remove("success");
};
const setSuccess = (element) => {
  const inputControl = element.ParentElement;
  const errorDisplay = inputControl.querySelector(".error");

  errorDisplay.innerText = " ";
  inputControl.classList.add("success");
  inputControl.classList.remove("error");
};

const isValidEmail = () => {
  const re =
    /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(String(email).toLowerCase());
};

const validateInput = () => {
  const usernameValue = Username.value.trim();
  const ageValue = age.value.trim();
  const emailValue = email.value.trim();
  const passwordValue = password.value.trim();
  if (usernameValue === " ") {
    setError(Username, "username is required");
  } else {
    setSuccess(Username);
  }
  if (emailValue === " ") {
    setError(email, "email is required");
  } else if (!isValidEmail(emailValue)) {
    setError(email, "Provide a valid email address");
  } else {
    setSuccess(email);
  }

  if (passwordValue === " ") {
    setError(password, "Password is required");
  } else if (passwordValue.length < 8) {
    setError(password, "Password must be at 8 character ");
  } else {
    setSuccess(password);
  }
};
