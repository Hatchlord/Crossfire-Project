if (!in_sequence && obj_CONTROLLER.playing == false)
{
    obj_CONTROLLER.sequence = layer_sequence_create("Sequences", x, y, sqn_introAnim);
    instance_destroy();
}