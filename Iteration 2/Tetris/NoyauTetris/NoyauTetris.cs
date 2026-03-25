namespace NoyauTetris;

public enum Couleur
{
    Bleu,
    Rose,
    Violet,
    Blanc,
    Noir
    
}
public class JeuTetris
{
    public int LargeurGrille;
    public int HauteurGrille;

    public JeuTetris()
    {
        LargeurGrille = 12;
        HauteurGrille = 15;
    }

}

public class Position
{
    public int X;
    public int Y;

    public Position(int x, int y)
    {
        X = x;
        Y = y;
    }
}