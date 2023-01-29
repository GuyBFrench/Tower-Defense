using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameGrid : MonoBehaviour
{

    private int height = 10;
    private int width = 10;
    private float gridSpaceSize = 2f;

    [SerializeField] private GameObject gridCellPrefab;
    private GameObject[,] gameGrid;
    
    void Start()
    {
        CreateGrid();
    }
    
    private void CreateGrid()
    {
        gameGrid = new GameObject[height, width];
        if (gridCellPrefab == null)
        {
            Debug.Log("Error: Grid Cell Prefab on the game grid is not assigned.");
            return;
        }
        
        //Make the grid
        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                //Create a new gridspace object for each cell
                gameGrid[x, y] = Instantiate(gridCellPrefab, new Vector3(x * gridSpaceSize,0,  y * gridSpaceSize),
                    Quaternion.identity);
                gameGrid[x,y].GetComponent<GridCell>().SetPosition(x, y);
                gameGrid[x, y].transform.parent = transform;
                
                gameGrid[x, y].gameObject.name = "Grid Space ( x: " + x.ToString() + ", Y: " + y.ToString() + ")";
                Vector3 tempv3 = new Vector3(x, y, 0);
                Vector3Data temp = ScriptableObject.CreateInstance<Vector3Data>();
                temp.value = (tempv3);
                temp.name = "Grid space: " + x + ", " + y;
            }
        }
    }
    
    //Gets the grid position from world position
    public Vector2Int GetGridPosFromWorld(Vector3 worldPosition)
    {
        int x = Mathf.FloorToInt(worldPosition.x / gridSpaceSize);
        int y = Mathf.FloorToInt(worldPosition.y / gridSpaceSize);

        x = Mathf.Clamp(x, 0, width);
        x = Mathf.Clamp(x, 0, height);

        return new Vector2Int(x, y);
    }

    public Vector3 GetWorldPosFromGridPos(Vector2Int gridPos)
    {
        float x = gridPos.x * gridSpaceSize;
        float y = gridPos.y * gridSpaceSize;

        return new Vector3(x, 0, y);
    }
    
}
