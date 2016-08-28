## Component Hierarchy

**Root**
  -NavbarContainer
    +Navbar
      *props: current_user, current_era
      *dispatch: guestLogin, requestCurrentUser
      *JoinContainer
        -Join
        -props: current_user
        -dispatch: signupUser, guestLogin
      *LoginContainer
        -Login
        -props: current_user
        -dispatch: loginUser, guestLogin
  -Splash
    -props: current_era
    -dispatch: changeEra (BONUS)
  -Dashboard
    +UserInfoContainer
      *UserInfo
        -props: current_user
        -dispatch: removeSite
      *AcceptGuestContainer
        -AcceptGuest
          +props: site
          +dispatch: createSite
      *AdIndex (BONUS)
        -Ad
      *BookingsIndexContainer
        -BookingsIndex
          +props: bookings, loading
          +dispatch: cancelBooking, requestBookings
          +Booking
            -props: booking
            -dispatch: cancelBooking
            -EnsureCancelBooking
              +dispatch: cancelBooking
      *GuestsIndexContainer
        -GuestsIndex
          +props: users, loading
          +dispatch: cancelGuest, requestGuests
          +Guest
            -props: user
            -dispatch: cancelGuest
            -EnsureCancelGuest
              +dispatch: cancelGuest
  -LocationSearchContainer
    +LocationSearch
      *props: users, current_era, loading
      *dispatch: locationSearch, changeEra
      *LocationSearchForm
        -props: current_era
        -dispatch: locationSearch
      *SearchResultsIndex
        -props: users
        -SearchResult
          +props: user
      *Map
        -props: users
        -dispatch: locationSearch
  -MemberSearchContainer (BONUS)
    +MemberSearch
      *props: users, loading
      *dispatch: userSearch
      *MemberSearchForm
        -dispatch: userSearch
      *SearchResultsIndex
        -props: users
        -SearchResult
          +props: user
  -ProfileContainer
    +Profile
    +props: user, loading
    +dispatch: requestUser, sendMessage(BONUS), sendFriendRequest(BONUS), sendReference
    +SendRequestContainer
      *SendRequest
        -props: current_user, user, request
        -dispatch: sendRequest
    +SendMessage (BONUS)
      *props: current_user, user
      *dispatch: sendMessage
    +EnsureAddFriend (BONUS)
      *props: current_user, user
      *dispatch: sendFriendRequest
    +WriteReference
      *props: current_user, user
      *dispatch: sendReference
    +AboutUser (BONUS)
      *props: user, loading
    +AboutSiteContainer
      *AboutSite
        -props: site
        -dispatch: requestSite
    +Photos (BONUS)
      *props: user, loading
    +ReferencesContainer
      *References
        -props: references, loading
        -dispatch: requestReferences
    +FriendsContainer (BONUS)
      *FriendsIndex
        -props: user, users, loading
        -dispatch: requestFriends
        -Friend
          +props: user
  -EditProfileContainer
    +EditProfile
    +props: user, loading
    +dispatch: requestUser, changeProfilePic(BONUS), updateUser(BONUS)
    +AboutUser (BONUS)
      *props: current_user, loading, updateUser
    +AboutSiteContainer
      *AboutSite
        -props: current_user, site, loading
        -dispatch: requestSite, updateSite, removeSite
    +Photos (BONUS)
      *props: current_user, loading
      *dispatch: addPic, removePic
    +FriendsContainer (BONUS)
      *FriendsIndex
        -props: current_user, users, loading
        -dispatch: requestFriends, removeFriend
        -Friend
          +props: user
          +dipatch: removeFriend
  -InboxContainer (BONUS)
    +Inbox
      *props: current_user, messages
      *dispatch: acceptFriend, deleteMessage
      *MessageList
        -props: messages
      *Message
        -props: messsage
        -dispatch: acceptFriend, deleteMessage
  -AboutIndex (BONUS)
    +About
    +Safety
    +HowItWorks
  -Footer

|Path|Component|
|----|---------|
|"asdf"|"asdf"|
