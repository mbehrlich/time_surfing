import { connect } from 'react-redux';
import { logoutUser, loginUser } from '../actions/session_actions';
import { updateSpacetime } from '../actions/spacetime_actions';
import Navbar from './navbar';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser,
  spacetime: store.spacetime
});

const mapDispatchToProps = (dispatch) => ({
  logoutUser: () => dispatch(logoutUser()),
  loginUser: () => dispatch(loginUser({username: "Marty", password: "12345678"})),
  updateSpacetime: (spacetime) => dispatch(updateSpacetime(spacetime))
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);
