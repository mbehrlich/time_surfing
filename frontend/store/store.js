import { createStore } from 'redux';
import RootReducer from '../reducers/root_reducer.js';

const configureStore = () => (
  createStore(RootReducer)
);

export default configureStore;
