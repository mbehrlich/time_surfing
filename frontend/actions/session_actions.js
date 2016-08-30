export const SESSION_CONSTANTS = {
  LOGIN_USER: "LOGIN_USER",
  CREATE_USER: "CREATE_USER"
};

export const createUser = (user) => ({
  type: SESSION_CONSTANTS.CREATE_USER,
  user
});

export const loginUser = (user) => ({
  type: SESSION_CONSTANTS.LOGIN_USER,
  user
});
