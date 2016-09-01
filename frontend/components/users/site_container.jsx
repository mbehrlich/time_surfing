import { connect } from 'react-redux';
import Site from './site';

const mapStateToProps = (store) => ({
  user: store.user.user
});

const mapDispatchToProps = (dispatch) => ({});

export default connect(mapStateToProps, null)(Site);
