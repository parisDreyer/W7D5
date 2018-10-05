


export const signup = user =>  {
  console.log('user',user);
  return $.ajax({
   type: 'POST',
   url: '/api/users',
   data: { user }
 });
};

export const login = user => {
  console.log('user',user);
  return $.ajax({
  type: 'POST', url: '/api/session', data: {user}
});};

export const logout = () => $.ajax({
  type: 'DELETE', url: '/api/session'
});
