#############################################################################
##
##  This file is part of GAP, a system for computational discrete algebra.
##
##  SPDX-License-Identifier: GPL-2.0-or-later
##
##  Copyright of GAP belongs to its developers, whose names are too numerous
##  to list here. Please refer to the COPYRIGHT file for details.
##



############################################################################
# Elementary matrix operations
############################################################################

############################################################################
##
#M  MultMatrixRow( <M>, <row>, <scalar> )
##
InstallMethod( MultMatrixRow, "for a mutable IsRowListMatrix, one row number, and a scalar",
  [ IsRowListMatrix and IsMutable, IsInt, IsObject ],
  function( mat, row, scalar )
  
    mat[row] := scalar * mat[row];
    
  end );


############################################################################
##
#M  MultMatrixRowRight( <M>, <row>, <scalar> )
##
InstallMethod( MultMatrixRowRight, "for a mutable IsRowListMatrix, one row number, and a scalar",
  [ IsRowListMatrix and IsMutable, IsInt, IsObject ],
  function( mat, row, scalar )
  
    mat[row] := mat[row] * scalar;
    
  end );


############################################################################
##
#M  AddMatrixRows( <M>, <row1>, <row2>, <scalar> )
##
InstallMethod( AddMatrixRows, "for a mutable IsRowListMatrix, one row number, second row number, and a scalar",
  [ IsRowListMatrix and IsMutable, IsInt, IsInt, IsObject ] ,
  function( mat, row1, row2, scalar )

    mat[row1] := mat[row1] + scalar * mat[row2];

  end );


############################################################################
##
#M  AddMatrixRowsRight( <M>, <row1>, <row2>, <scalar> )
##
InstallMethod( AddMatrixRowsRight, "for a mutable IsRowListMatrix, one row number, second row number, and a scalar",
  [ IsRowListMatrix and IsMutable, IsInt, IsInt, IsObject ] ,
  function( mat, row1, row2, scalar )
 
    mat[row1] := mat[row1] + mat[row2] * scalar;

  end );

############################################################################
##
#M  SwapMatrixRows( <M>, <row1>, <row2> )
##
InstallMethod( SwapMatrixRows, "for a mutable IsRowListMatrix, one row number, second row number",
  [ IsRowListMatrix and IsMutable, IsInt, IsInt ],
  function( mat, row1, row2 )
    local temp;

    temp := mat[row1];
    mat[row1] := mat[row2];
    mat[row2] := temp;
    #mat{[row1,row2]} := mat{[row2,row1]};

  end );

