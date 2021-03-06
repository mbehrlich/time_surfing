import { connect } from 'react-redux';
import Join from './join';
import { createUser, loginUser } from '../../actions/session_actions';


const mapStateToProps = (state) => ({
  loggedIn: (state.session.currentUser ? true : false),
  currentUser: state.session.currentUser,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  createUser: (user) => dispatch(createUser(user)),
  loginUser: () => dispatch(loginUser({username: "Marty", password: "12345678"}))
});

export default connect(mapStateToProps, mapDispatchToProps)(Join);
