function onCreate()
    addLuaScript('add_scripts/xhealth/fucked')

    makeLuaSprite('message', 'badmarkMessage', 0, 0)
    setObjectCamera('message', 'hud')
    scaleObject('message', 0.7, 0.7)
	setScrollFactor('message', 0, 0)

    addLuaSprite('message')
    setProperty('message.alpha', 0)
end

function onSongStart()
    doTweenAlpha('messageAppear', 'message', 1, 1, 'quadIn')
    runTimer('hahaMessageGoPoof', 4.5)
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'hahaMessageGoPoof' then
        doTweenAlpha('messageDisappear', 'message', 0, 1, 'quadIn')
    end
end