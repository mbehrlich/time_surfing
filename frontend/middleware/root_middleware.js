import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import UserMiddleware from './user_middleware';
import SiteMiddleware from './site_middleware';
import BookingMiddleware from './booking_middleware';
import ReferenceMiddleware from './reference_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  UserMiddleware,
  SiteMiddleware,
  BookingMiddleware,
  ReferenceMiddleware
);

export default RootMiddleware;
