﻿using System;
using System.ComponentModel;
using System.Windows.Threading;

namespace BindingClock_Demo
{
    public class ClockViewModel : INotifyPropertyChanged
    {
        private readonly DispatcherTimer _timer;
        private string _currentTime;
        private string _currentDate;

        public string CurrentTime
        {
            get => _currentTime;
            set
            {
                if (_currentTime != value)
                {
                    _currentTime = value;
                    OnPropertyChanged(nameof(CurrentTime));
                }
            }
        }

        public string CurrentDate
        {
            get => _currentDate;
            set
            {
                if (_currentDate != value)
                {
                    _currentDate = value;
                    OnPropertyChanged(nameof(CurrentDate));
                }
            }
        }

        public ClockViewModel()
        {
            _timer = new DispatcherTimer();
            _timer.Interval = TimeSpan.FromMilliseconds(1);
            _timer.Tick += Timer_Tick;
            _timer.Start();
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            CurrentTime = DateTime.Now.ToString("HH:mm:ss.fff");
            CurrentDate = DateTime.Now.ToString("dddd, MMMM dd, yyyy");
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}