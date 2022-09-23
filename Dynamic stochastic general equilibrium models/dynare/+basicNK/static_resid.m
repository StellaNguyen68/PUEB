function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = basicNK.static_resid_tt(T, y, x, params);
end
residual = zeros(11, 1);
lhs = params(1)*y(3)+params(2)*y(7);
rhs = y(6)-y(9);
residual(1) = lhs - rhs;
lhs = 0;
rhs = T(1)*(y(4)-y(9));
residual(2) = lhs - rhs;
lhs = y(5);
rhs = (1-params(5))*y(5)+params(5)*y(2);
residual(3) = lhs - rhs;
lhs = y(1);
rhs = y(11)+params(3)*y(5)+(1-params(3))*y(7);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = y(1)-y(4);
residual(5) = lhs - rhs;
lhs = y(7);
rhs = y(1)-y(6);
residual(6) = lhs - rhs;
lhs = y(8);
rhs = (1-params(3))*y(6)+params(3)*y(4)-y(11);
residual(7) = lhs - rhs;
lhs = y(10);
rhs = params(4)*y(10)+T(6)*(y(8)-y(9));
residual(8) = lhs - rhs;
residual(9) = y(10);
lhs = T(4)*y(1);
rhs = (T(4)-T(5))*y(3)+T(5)*y(2);
residual(10) = lhs - rhs;
lhs = y(11);
rhs = y(11)*params(6)+x(1);
residual(11) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
