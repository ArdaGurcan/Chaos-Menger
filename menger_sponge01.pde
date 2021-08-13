float[][] corners = {{50, 50}, {50, 400}, {50, 750}, {400, 50}, {400, 750}, {750, 50}, {750, 400}, {750, 750}, };
float[] lastPos = {100, 800};


void setup()
{
    pixelDensity(2);
    size(800, 800);
    background(0);
    fill(255);
    stroke(255);
    //for (int i  = 0; i < corners.length; i++)
    //{
    //    ellipse(corners[i][0], corners[i][1], 20, 20);
    //}
}

void draw()
{
    for (int x = 0; x < 100000; x++) {

        int i = int(random(corners.length));
        point((corners[i][0] * 2 + lastPos[0]) / 3, (corners[i][1] * 2 + lastPos[1]) / 3);//, 1, 1 );
        //print("lastPos-1 : " + lastPos[0] + "," + lastPos[1] + "\n");
        lastPos[0] = (corners[i][0] * 2 + lastPos[0]) / 3;
        lastPos[1] = (corners[i][1] * 2 + lastPos[1]) / 3;
        //print("lastPos-2 : " + lastPos[0] + "," + lastPos[1] + "\n");
    }
}
