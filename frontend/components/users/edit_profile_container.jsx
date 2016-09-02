import { connect } from 'react-redux';
import EditProfile from './edit_profile';
import { updateUser } from '../../actions/user_actions';

const mapStateToProps = (store) => ({
  errors: store.session.errors,
  currentUser: store.session.currentUser,
  loggedIn: (store.session.currentUser ? true : false),
  loading: store.loading
});

const mapDispatchToProps = (dispatch) => ({
  updateUser: (id, newInfo) => dispatch(updateUser(id, newInfo))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditProfile);
