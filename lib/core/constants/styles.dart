import 'package:flutter/material.dart';
import 'package:social_media/core/constants/colors.dart';

const whiteTxt22 = TextStyle(color: whiteColor, fontSize: 22);
const whiteTxt22B =
    TextStyle(color: whiteColor, fontSize: 22, fontWeight: FontWeight.bold);
const whiteTxt12 = TextStyle(color: whiteColor, fontSize: 12);
const whiteTxt15 = TextStyle(color: whiteColor, fontSize: 15);
const whiteTxt16 = TextStyle(color: whiteColor, fontSize: 16);
const whiteTxt18 = TextStyle(color: whiteColor, fontSize: 18);
const blueTxt16 = TextStyle(color: Colors.blue, fontSize: 16);
const txtFormStyle = TextStyle(color: Colors.white38, fontSize: 14);

// Sized Box
const sbHeight10 = SizedBox(height: 10);
const sbHeight20 = SizedBox(height: 20);
const sbHeight30 = SizedBox(height: 30);
const sbHeight50 = SizedBox(height: 50);
const sbWidth10 = SizedBox(width: 10);
const sbWidth20 = SizedBox(width: 20);

// List for UI
List<String> profilePosts = [
  'https://wallpapercave.com/wp/wp2561857.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDBzKoPWzynNN4Rk5Oam3dqpbt_e8fv_U7jA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDh84qSwz0Mo1fCgotOxZ7si4XumjP_44lw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSde2ei06z-FX-N92XN6Uca9Zzjy38bOgiCrQ&usqp=CAU',
  'https://wallpapercave.com/wp/wp2561857.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDBzKoPWzynNN4Rk5Oam3dqpbt_e8fv_U7jA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHDh84qSwz0Mo1fCgotOxZ7si4XumjP_44lw&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSde2ei06z-FX-N92XN6Uca9Zzjy38bOgiCrQ&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFt7tGHzZ7cKmZyht0FYn7fj9PoqG43VDQTg&usqp=CAU'
];

List<String> savedImgs = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUOYi55viJNSimhUQ2bH9L9nDkiHuJ_b3lwv8dTyFucohaLvkR3ZJc3PZeQIdcuXByJ5s&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO9enQLrI_lyBCkJoJiDkT4Op9tybPdGkqXA&usqp=CAU',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFt7tGHzZ7cKmZyht0FYn7fj9PoqG43VDQTg&usqp=CAU',
  'https://wallpapercave.com/wp/wp2561857.jpg',
];

List<String> messages = [
  'hey',
  'Hello there! How are You?',
  'yo yo man',
  'Hi',
  'Fine',
  'I Hope you are doing well on these convid pandemic situation as there was a lot of cases reported in the city.',
  'How are you doing? I think  you are doing well, Im hoping to meet you soon lets see if it would be happening.'
];
List<bool> isUser = [true, true, false, true, false, false, true];

// Enums
enum loginButtonEnums { login, resetPass, signUp }
