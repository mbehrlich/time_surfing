import { connect } from 'react-redux';
import { logoutUser } from '../actions/session_actions';
import Navbar from './navbar';

const mapStateToProps = (store) => ({
  currentUser: store.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  logoutUser: () => dispatch(logoutUser())
});

export default connect(mapStateToProps, mapDispatchToProps)(Navbar);
