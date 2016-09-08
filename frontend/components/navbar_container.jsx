import { connect } from 'react-redux';
import { logoutUser, loginUser } from '../actions/session_actions';
import { updateSpacetime } from '../actions/spacetime_actions';
import Navbar from './navbar';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  spacetime: state.spacetime
});

const mapDispatchToProps = (dispatch) => ({
  logoutUser: () => dispatch(logoutUser()),
  loginUser: () => dispatch(loginUser({username: "Marty", password: "12345678"})),
  updateSpacetime: (spacetime) => dispatch(updateSpacetime(spacetime))
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);
