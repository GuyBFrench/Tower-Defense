using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class InvokeEventsBahavior : MonoBehaviour
{
    public UnityEvent startEvent, awakeEvent;
    public void Start()
    {
        startEvent.Invoke();
    }

    public void Awake()
    {
        awakeEvent.Invoke();
    }

    void Update()
    {
        
    }
}
