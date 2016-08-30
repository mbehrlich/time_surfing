import { connect } from 'react-redux';
import Join from './join';
import { createUser } from '../../actions/session_actions';


const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser,
  errors: state.session.errors
});

const mapDispatchToProps = (dispatch) => ({
  createUser: (user) => dispatch(createUser(user))
});

export default connect(mapStateToProps, null)(Join);
