using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildManager : MonoBehaviour
{

    public static BuildManager instance;
    private GameObject buildingToBuild;
    public GameObject archerPrefab;
    public GameObject wizardPrefab;
    void Awake()
    {
        if (instance != null)
        {
            Debug.Log("More than one Build Manager in scene.");
            return;
        }
        instance = this;
    }
    
    public GameObject GetObjectToBuild()
    {
        return buildingToBuild;
    }

    public void SetBuildingToBuild(GameObject building)
    {
        buildingToBuild = building;
    }
    
}
