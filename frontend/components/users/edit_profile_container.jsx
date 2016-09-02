import { connect } from 'react-redux';
import EditProfile from './edit_profile';

const mapStateToProps = (store) => ({
  errors: store.session.errors,
  currentUser: store.session.currentUser,
  loggedIn: (store.session.currentUser ? true : false)
});

const mapDispatchToProps = (dispatch) => ({
  updateUser: (user_id, new_info) => dispatch(updateUser(user_id, new_info))
});

export default connect(mapStateToProps, null)(EditProfile);
