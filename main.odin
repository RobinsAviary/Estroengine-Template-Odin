package main

import "core:fmt"
import e "estro:engine"

main :: proc() {
    TestStep :: proc() {

    }
    
    TestDraw :: proc() {
        position: e.Vector2(i32) = e.Cursor_GetPosition()
        if (e.Cursor_IsOnscreen()) {
            e.Circle_Draw(e.Circle_Create(f32, e.Cast(position, f32), 16), e.Estrogen)
        }
    }

    engine: e.Engine = e.Engine_Create()

    testNode: e.Node = e.Node_Create(&engine, TestStep, TestDraw)

    e.List_Add(&engine.nodes, testNode)

    e.Window_Init({600, 400}, "Title")

    for (e.Window_IsOpen()) {
        e.Color_DrawClear(e.White)
        e.Engine_Update(&engine)
    }
}