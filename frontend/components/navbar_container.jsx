import { connect } from 'react-redux';
import { logoutUser, loginUser } from '../actions/session_actions';
import Navbar from './navbar';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  logoutUser: () => dispatch(logoutUser()),
  loginUser: () => dispatch(loginUser({username: "Marty", password: "12345678"}))
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);
