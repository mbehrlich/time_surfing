import { connect } from 'react-redux';
import Signup from './login';
import { loginUser } from '../../actions/session_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  loginUser: (user) => dispatch(loginUser(user))
});

export default connect(mapStateToProps, null)(Signup);
