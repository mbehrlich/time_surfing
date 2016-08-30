export const SESSION_CONSTANTS = {
  LOGIN_USER: "LOGIN_USER",
  CREATE_USER: "CREATE_USER",
  RECEIVE_USER: "RECEIVE_USER",
  RECEIVE_ERRORS: "RECEIVE_ERRORS"
};

export const createUser = (user) => ({
  type: SESSION_CONSTANTS.CREATE_USER,
  user
});

export const loginUser = (user) => ({
  type: SESSION_CONSTANTS.LOGIN_USER,
  user
});

export const receiveUser = (user) => ({
  type: SESSION_CONSTANTS.RECEIVE_USER,
  user
});

export const receiveErrors = (errors) => ({
  type: SESSION_CONSTANTS.RECEIVE_ERRORS,
  errors
});
