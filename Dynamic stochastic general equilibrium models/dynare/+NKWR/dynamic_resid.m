function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = NKWR.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(12, 1);
lhs = y(12);
rhs = params(4)*y(19)+T(3)*(params(1)*y(7)+params(2)*y(11)-(y(10)-y(13)));
residual(1) = lhs - rhs;
lhs = y(12);
rhs = y(10)-y(2);
residual(2) = lhs - rhs;
lhs = params(1)/params(4)*(y(17)-y(7));
rhs = T(1)*(y(18)-y(20));
residual(3) = lhs - rhs;
lhs = y(9);
rhs = (1-params(5))*y(1)+params(5)*y(6);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = y(15)+params(3)*y(1)+(1-params(3))*y(11);
residual(5) = lhs - rhs;
lhs = y(1);
rhs = y(5)-y(8);
residual(6) = lhs - rhs;
lhs = y(11);
rhs = y(5)-y(10);
residual(7) = lhs - rhs;
lhs = y(16);
rhs = (1-params(3))*y(10)+params(3)*y(8)-y(15);
residual(8) = lhs - rhs;
lhs = y(14);
rhs = params(4)*y(21)+T(4)*(y(16)-y(13));
residual(9) = lhs - rhs;
lhs = y(14);
rhs = y(13)-y(3);
residual(10) = lhs - rhs;
lhs = y(5)*T(6);
rhs = y(7)*(T(6)-T(7))+y(6)*T(7);
residual(11) = lhs - rhs;
lhs = y(15);
rhs = params(6)*y(4)+x(it_, 1);
residual(12) = lhs - rhs;

end
