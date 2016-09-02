import { connect } from 'react-redux';
import { updateUser } from '../../actions/user_actions';
import EditAbout from './edit_about';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  updateUser: (id, newInfo) => dispatch(updateUser(id, newInfo))
});

export default connect(mapStateToProps, mapDispatchToProps)(EditAbout);
