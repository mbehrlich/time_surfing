import { connect } from 'react-redux';
import Signup from './login';
import { loginUser } from '../../actions/session_actions';

const mapStateToProps = (state) => ({
  loggedIn: (state.session.currentUser ? true : false),
  currentUser: state.session.currentUser,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  loginUser: (user) => dispatch(loginUser(user)),
  guestLogin: () => dispatch(loginUser({username: "Marty", password: "12345678"}))
});

export default connect(mapStateToProps, mapDispatchToProps)(Signup);
