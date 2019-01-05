void readData(){
data = new int[3][][][][];
  data[0] = new int[30][][][];
  data[1] = new int[31][][][];
  data[2] = new int[30][][][];
  for (int i=0; i<data.length; i++) {
    for (int j=0; j<data[i].length; j++) {
      data[i][j] = new int[3][][];
      for (int k=0; k<3; k++) {
        data[i][j][k] = new int[4][];
        for (int l=0; l<4; l++) {
          data[i][j][k][l] = new int[3];
          for (int m=0; m<3; m++) {
            data[i][j][k][l][m] = 0;
          }
        }
      }
    }
  }

  readFile();

  for (int i=0; i<data.length; i++) {
    for (int j=0; j<data[i].length; j++) {
      for (int k=0; k<data[i][j][2].length-1; k++) {
        for (int l=0; l<data[i][j][2][k].length; l++) {
          data[i][j][2][k][l] = data[i][j][0][k][l] + data[i][j][1][k][l];
        }
      }
    }
  }

  for (int i=0; i<data.length; i++) {
    for (int j=0; j<data[i].length; j++) {
      for (int k=0; k<data[i][j].length; k++) {
        for (int l=0; l<data[i][j][k][3].length; l++) {
          data[i][j][k][3][l] = data[i][j][k][0][l] + data[i][j][k][1][l] + data[i][j][k][2][l];
        }
      }
    }
  }
}
