import { connect } from 'react-redux';
import About from './about';

const mapStateToProps = (store) => ({
  user: store.user.user
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(About);
