import React, { Component } from 'react';
import Header from './Component/header';
import Footer from './Component/footer';
import routes from './routes';
import Parent from './Component/Parent'
import {Route,Switch} from "react-router-dom";
import axios from 'axios';
import Loader from './Component/Loader/main_loader';
import Authentication from './Container/Authentication/Authentication'
 class App extends Component
 { 
  state={isLoading:true}
  render() 
  {
    const {isLoading}=this.state
    if(isLoading)
    {
    return(
        <Parent>
          <Header {...this.props}  />
          <div class="container">
             <Switch>
                {routes.map((route,idx)=>{
                  return(route.component ? (<Route key={idx} path={route.path} exact={route.exact} name={route.name} render={props => (
                        <route.component {...props} />
                      )} />)
                      : (null))
                })}
              </Switch>
          </div>
          <Footer/>
        </Parent>
    );
    }
    else
    {
      return(<Loader />)
    }
  }
}

export default Authentication(App);