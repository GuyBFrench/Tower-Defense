using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class PlacePrefab : MonoBehaviour
{
    public Vector3 position;
    public GameObject prefab;
    public UnityEvent onClickEvent;
    // Start is called before the first frame update
    void Start()
    {
        position = transform.position;
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnMouseDown()
    {

        Instantiate(prefab, transform.position + Vector3.right + Vector3.forward, Quaternion.identity);
        //onClickEvent.Invoke();
    }
}
