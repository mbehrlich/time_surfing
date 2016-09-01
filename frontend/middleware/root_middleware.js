import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import UserMiddleware from './user_middleware';
import SiteMiddleware from './site_middleware';

const RootMiddleware = applyMiddleware(SessionMiddleware, UserMiddleware, SiteMiddleware);

export default RootMiddleware;
