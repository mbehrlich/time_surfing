export const SESSION_CONSTANTS = {
  LOGIN_USER: "LOGIN_USER",
  CREATE_USER: "CREATE_USER",
  RECEIVE_USER: "RECEIVE_USER",
  RECEIVE_ERRORS: "RECEIVE_ERRORS",
  LOGOUT_USER: "LOGOUT_USER"
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

export const logoutUser = () => ({
  type: SESSION_CONSTANTS.LOGOUT_USER
});
