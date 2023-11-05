using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
using Xamarin.Essentials;
using System.IO;
using System.Reflection;
using Plugin.SimpleAudioPlayer;

namespace SteelStrickers.Services
{
    public class AudioService
    {
        ISimpleAudioPlayer player = CrossSimpleAudioPlayer.Current;

        public void PlayBackgroundMusic()
        {
            var assembly = typeof(AudioService).GetTypeInfo().Assembly;
            var audioStream = assembly.GetManifestResourceStream("energicMusic.mp3");
            player.Load("energicMusic.mp3");
            player.Loop = true; // To loop the music
            player.Play();
        }

        public void StopBackgroundMusic()
        {
            if (player.IsPlaying)
            {
                player.Stop();
            }
        }
    }
}
