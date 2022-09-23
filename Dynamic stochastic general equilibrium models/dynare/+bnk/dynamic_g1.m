function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = bnk.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(14, 23);
g1(1,5)=1;
g1(1,19)=(-params(2));
g1(1,6)=(-T(3));
g1(2,19)=T(2);
g1(2,6)=1;
g1(2,20)=(-1);
g1(2,9)=(-T(2));
g1(2,10)=T(2);
g1(3,6)=1;
g1(3,7)=(-1);
g1(3,8)=1;
g1(4,8)=1;
g1(4,14)=(-T(1));
g1(5,10)=1;
g1(5,14)=(-((1-params(7))*T(1)*(-params(9))));
g1(6,5)=(-params(5));
g1(6,6)=(-params(6));
g1(6,9)=1;
g1(6,13)=(-1);
g1(7,5)=(-1);
g1(7,1)=1;
g1(7,7)=(-1);
g1(7,2)=(-params(11));
g1(7,9)=params(11);
g1(7,11)=1;
g1(8,7)=1;
g1(8,12)=(-(1-params(1)));
g1(8,14)=(-1);
g1(9,3)=(-params(8));
g1(9,13)=1;
g1(9,22)=(-1);
g1(10,4)=(-params(7));
g1(10,14)=1;
g1(10,23)=(-1);
g1(11,5)=(-4);
g1(11,15)=1;
g1(12,9)=(-4);
g1(12,16)=1;
g1(13,21)=1;
g1(13,16)=(-1);
g1(13,17)=1;
g1(14,11)=(-4);
g1(14,18)=1;

end
