import { connect } from 'react-redux';
import AddReference from './add_reference';
import { createReference, clearReference } from '../../actions/reference_actions';

const mapStateToProps = (state) => ({
  user: state.user.user,
  errors: state.references.errors,
  received: state.references.received
});

const mapDispatchToProps = (dispatch) => ({
  createReference: (id, reference) => dispatch(createReference(id, reference)),
  clearReference: () => dispatch(clearReference())
});

export default connect(mapStateToProps, mapDispatchToProps)(AddReference);
