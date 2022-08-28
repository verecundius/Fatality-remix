function onCreate()
    makeAnimatedLuaSprite('fatalityBg1','exe/Fatal/launchbase',-1200,-900)
    addAnimationByPrefix('fatalityBg1','moviment','idle',14,true)
    setProperty('fatalityBg1.antialiasing',false)
    scaleObject('fatalityBg1',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2','exe/Fatal/domain',-1200,-900)
    addAnimationByPrefix('fatalityBg2','moviment','idle',14,false)
    setProperty('fatalityBg2.antialiasing',false)
    scaleObject('fatalityBg2',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg2-5','exe/Fatal/domain2',-1200,-900)
    addAnimationByPrefix('fatalityBg2-5','moviment','idle',14,false)
    setProperty('fatalityBg2-5.antialiasing',false)
    scaleObject('fatalityBg2-5',5.7,5.7)

    makeAnimatedLuaSprite('fatalityBg3','exe/Fatal/truefatalstage',-1200,-900)
    addAnimationByPrefix('fatalityBg3','moviment','idle',14,false)
    setProperty('fatalityBg3.antialiasing',true)
    scaleObject('fatalityBg3',5.7,5.7)

    addLuaSprite('fatalityBg1')

    
end
function onBeatHit()
    objectPlayAnimation('fatalityBg2','moviment',false)
    objectPlayAnimation('fatalityBg2-5','moviment',false)
end
function onStepHit()
    if songName == 'fatality-remix' then
        if curStep == 256 then
            removeLuaSprite('fatalityBg1')
            addLuaSprite('fatalityBg2-5')
            addLuaSprite('fatalityBg2')

        end
        if curStep == 1984 then
            removeLuaSprite('fatalityBg2')
            addLuaSprite('fatalityBg3')
            setProperty('boyfriend.x',405)
        end
    end
end